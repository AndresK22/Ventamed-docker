<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DetalleEntradaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'entrada_id' => 'required|integer',
            'medicamento_id' => 'required|integer',
            'cantidadEntrada' => 'required|integer',
            'precioEntrada' => 'required|numeric|between:0.01,999.99',
        ];
    }
}