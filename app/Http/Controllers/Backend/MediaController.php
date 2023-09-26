<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\MediaOption;
use Illuminate\Support\Str;
use Image;
class MediaController extends Controller
{
    private $theme;
    public function __construct(){
        $this->theme = 'backend';
    }

    //Media page load
    public function getMediaPageLoad(Request $request){

		$search = $request->search;

        if($search != ''){
            $media_datalist = MediaOption::where(function ($query) use ($search){
                $query->where('title', 'like', '%'.$search.'%')
                    ->orWhere('alt_title', 'like', '%'.$search.'%');
            })
			->orderBy('id','desc')
			->paginate(28);
			
            $media_datalist->appends(['search' => $search]);
			
        }else{
            $media_datalist = MediaOption::orderBy('id','desc')->paginate(28);
        }
		
		return view($this->theme.'.media', compact('media_datalist'));
    }
	
	//Get data for Media Pagination
	public function getMediaPaginationData(Request $request){

		$search = $request->search;
		
		if($request->ajax()){
			
			if($search != ''){
				$media_datalist = MediaOption::where(function ($query) use ($search){
					$query->where('title', 'like', '%'.$search.'%')
						->orWhere('alt_title', 'like', '%'.$search.'%');
				})
				->orderBy('id', 'desc')
				->paginate(28);
				
				$media_datalist->appends(['search' => $search]);
				
			}else{
				$media_datalist = MediaOption::orderBy('id', 'desc')->paginate(28);
			}
			
			return view($this->theme.'.partials.media_pagination_data', compact('media_datalist'))->render();
		}
	}
	
	//Get data for media by id
    public function getMediaById(Request $request){

		$id = $request->id;
		$data = MediaOption::where('id', $id)->first();
		return response()->json($data);
	}
	
	//Save data for media
    public function mediaUpdate(Request $request){
		$res = array();
		
		$id = $request->input('RecordId');
		$title = $request->input('title');
		$alt_title = $request->input('alternative_text');

		$data = array(
			'title' => $title,
			'alt_title' => $alt_title
		);

		$response = MediaOption::where('id', $id)->update($data);
		if($response){
			$res['msgType'] = 'success';
			$res['msg'] = __('Data Updated Successfully');
		}else{
			$res['msgType'] = 'error';
			$res['msg'] = __('Data update failed');
		}
		
		return response()->json($res);
    }
	
	//Delete data for Media
	public function onMediaDelete(Request $request){
		
		$res = array();

		$id = $request->id;
		
		if($id != ''){
			
			$datalist = MediaOption::where('id', $id)->first();
			$thumbnail = $datalist['thumbnail'];
			$large_image = $datalist['large_image'];

			if (file_exists(public_path('media/'.$thumbnail))) {
				unlink(public_path('media/'.$thumbnail));
			}
			
			if (file_exists(public_path('media/'.$large_image))) {
				unlink(public_path('media/'.$large_image));
			}
		
			$response = MediaOption::where('id', $id)->delete();
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Data Removed Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data remove failed');
			}
		}
		
		return response()->json($res);
	}
	
	//Get data for Global Media
	public function getGlobalMediaData(Request $request){

		$search = $request->search;
		
		if($request->ajax()){
			
			if($search != ''){
				$media_datalist = MediaOption::where(function ($query) use ($search){
					$query->where('title', 'like', '%'.$search.'%')
						->orWhere('alt_title', 'like', '%'.$search.'%');
				})
				->orderBy('id', 'desc')
				->paginate(28);
				
				$media_datalist->appends(['search' => $search]);
				
			}else{
				$media_datalist = MediaOption::orderBy('id', 'desc')->paginate(28);
			}

			return view($this->theme.'.partials.global_media_pagination_data', compact('media_datalist'))->render();
		}
	}

    public function FileUpload(Request $request){
		
		$destinationPath = public_path('media');
		$dateTime = date('dmYHis');
		
		$file = $request->file('FileName');

		//Display File Name
		$FileName = $dateTime.'-'.$file->getClientOriginalName();
		//$FileName = $file->getClientOriginalName();
		
		//get file extension
		$FileExt = $file->getClientOriginalExtension();
		
		//Convert uppercase to lowercase
		$Filetype = Str::lower($FileExt);
		
		//Display File Real Path
		$FileRealPath = $file->getRealPath();
		
		//Display File Size
		$FileSize = $file->getSize();
		
		//Original file name
		$OriginalFileName = basename($file->getClientOriginalName(), ".".$FileExt);
		
		//Display File Mime Type
		$FileMimeType = $file->getMimeType();
		
		if (file_exists(public_path('media/'.$FileName))) {
			unlink(public_path('media/'.$FileName));			
		}

		$msgList = array();
		
		//The file Check extension
		if (($Filetype == 'jpg') || ($Filetype == 'jpeg') || ($Filetype == 'png') || ($Filetype == 'gif') || ($Filetype == 'PNG') || ($Filetype == 'JPG') || ($Filetype == 'JPEG') || ($Filetype == 'ico') || ($Filetype == 'ICO') || ($Filetype == 'svg') || ($Filetype == 'SVG')) {
			if($file->move($destinationPath, $FileName)) {
				$data = array(
					'title' => $OriginalFileName,
					'alt_title' => $OriginalFileName,
					'thumbnail' => $FileName,
					'large_image' => $FileName,
					'option_value' => $FileSize
				);
				
				$response = MediaOption::create($data)->id;
				
				if($response){
					$msgList["msgType"] = 'success';
					$msgList['msg'] = __('The file uploaded Successfully');
					$msgList["FileName"] = $FileName;
				}else{
					$msgList['msgType'] = 'error';
					$msgList['msg'] = __('Data insert failed');
					$msgList["FileName"] = '';
				}
				
			} else {
				$msgList["msgType"] = 'error';
				$msgList['msg'] = __('Sorry, there was an error uploading your file');
				$msgList["FileName"] = '';
			}
		} else {
			$msgList["msgType"] = 'error';
			$msgList['msg'] = __('Sorry only you can upload jpg, png and gif file type');
			$msgList["FileName"] = '';
		}
		
		return response()->json($msgList);
	}
	
	public function MediaUpload(Request $request){

		$destinationPath = public_path('media');
		$dateTime = date('dmYHis');
		
		$thumbnail = thumbnail($request['media_type']);
		$width = $thumbnail['width'];
		$height = $thumbnail['height'];

		$file = $request->file('FileName');

		//Display File Name
		$FileName = $dateTime.'-'.$file->getClientOriginalName();
		$ThumFileName = $dateTime.'-'.$width.'x'.$height.'-'.$file->getClientOriginalName();
		//$FileName = $file->getClientOriginalName();
		
		//get file extension
		$FileExt = $file->getClientOriginalExtension();
		
		//Convert uppercase to lowercase
		$Filetype = Str::lower($FileExt);
		
		//Display File Real Path
		$FileRealPath = $file->getRealPath();
		
		//Display File Size
		$FileSize = $file->getSize();
		
		//Original file name
		$OriginalFileName = basename($file->getClientOriginalName(), ".".$FileExt);
		
		//Display File Mime Type
		$FileMimeType = $file->getMimeType();
		
		if (file_exists(public_path('media/'.$FileName))) {
			unlink(public_path('media/'.$FileName));
		}

		$msgList = array();
		
		//The file Check extension
		if (($Filetype == 'jpg') || ($Filetype == 'JPG') || ($Filetype == 'jpeg') || ($Filetype == 'JPEG') || ($Filetype == 'png') || ($Filetype == 'PNG') || ($Filetype == 'gif') || ($Filetype == 'ico') || ($Filetype == 'ICO') || ($Filetype == 'svg') || ($Filetype == 'SVG')) {
			
			if(($Filetype == 'gif') || ($Filetype == 'ico') || ($Filetype == 'ICO') || ($Filetype == 'svg') || ($Filetype == 'SVG')){
				$ThumFileName = $FileName;
			}else{
				$img = Image::make($FileRealPath);
				$img->resize($width, $height, function ($constraint) {
					$constraint->aspectRatio();
				})->save($destinationPath.'/'.$ThumFileName);
			}
			
			if($file->move($destinationPath, $FileName)) {

				$data = array(
					'title' => $OriginalFileName,
					'alt_title' => $OriginalFileName,
					'thumbnail' => $ThumFileName,
					'large_image' => $FileName,
					'option_value' => $FileSize
				);
				
				$response = MediaOption::create($data)->id;
				
				if($response){
					$msgList["msgType"] = 'success';
					$msgList['msg'] = __('The file uploaded Successfully');
					$msgList["thumbnail"] = $ThumFileName;
					$msgList["large_image"] = $FileName;
					$msgList["id"] = $response;
				}else{
					$msgList['msgType'] = 'error';
					$msgList['msg'] = __('Data insert failed');
					$msgList["thumbnail"] = '';
					$msgList["large_image"] = '';
					$msgList["id"] = '';
				}
				
			} else {
				$msgList["msgType"] = 'error';
				$msgList['msg'] = __('Sorry, there was an error uploading your file');
				$msgList["thumbnail"] = '';
				$msgList["large_image"] = '';
				$msgList["id"] = '';
			}
		} else {
			$msgList["msgType"] = 'error';
			$msgList['msg'] = __('Sorry only you can upload jpg, png and gif file type');
			$msgList["thumbnail"] = '';
			$msgList["large_image"] = '';
			$msgList["id"] = '';
		}
		
		return response()->json($msgList);
	}
}
