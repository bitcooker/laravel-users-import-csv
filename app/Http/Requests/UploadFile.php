<?php

namespace App\Http\Requests;

use App\Gender;
use Illuminate\Foundation\Http\FormRequest;

class UploadFile extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|string|min:1|max:250',
            'address' => 'required|string|min:1|max:250',
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'gender_id' => 'required|numeric|in:'.Gender::getIds()->join(','),
        ];
    }
}
