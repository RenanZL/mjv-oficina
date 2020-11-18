<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MJV Oficina</title>
	<!-- Material Design -->
	<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<!-- Fontes -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;700&family=Catamaran:wght@400;700&display=swap" rel="stylesheet">
	<style type="text/css">
		*{
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			text-transform: none !important;
			outline: none;
		}
		
		label{
			font-family: 'Catamaran', sans-serif !important;
		}
		
		a{
			text-decoration: none !important;
		}
		
		p{
			font-size: 14px !important;
			font-family: 'Catamaran', sans-serif !important;
			font-weight: 400;
			color: #808080
		}
		
		span{
			font-family: 'Catamaran', sans-serif !important;
			font-weight: 700;
			font-size: 18px;
		}
		
		h3{
			font-family: 'Baloo 2', cursive !important;
			color: #282828;
			font-weight: 700;
		}
		
		.modal.modal-static .modal-dialog {
		 -webkit-transform: none !important; transform: none !important;
		}
		
		.mdc-menu-surface--open{
			max-height: 200px !important
		}
	</style>
</head>
<body>
	<!-- Modal -->
	<div class="modal" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header row px-5 border-0">
	      		<h3 class="my-4 col-12 w-100">Registros de defeitos veiculares</h3>
	      		<div class="col-6 my-3">
		        	<label class="mdc-text-field mdc-text-field--outlined w-100">
						  <span class="mdc-notched-outline">
						   <span class="mdc-notched-outline__leading"></span>
						    <span class="mdc-notched-outline__notch">
						      <span class="mdc-floating-label" id="my-label-id">Nome do cliente</span>
						    </span>
						    <span class="mdc-notched-outline__trailing"></span>
						  </span>
						  <input class="mdc-text-field__input" type="text" aria-labelledby="my-label-id">
						  <i class="material-icons mdc-text-field__icon mdc-text-field__icon--trailing" tabindex="0" role="button">check</i>
					</label>
	        	</div>
	        	<div class="col-3">
	        		<p class="mb-1">Acesso: 11/11/2020</p>
	        		<p>Horário: 18:06:53</p>
	        	</div>
	        	<div class="col-6 mb-3">
		        	<div class="mdc-select mdc-select--outlined w-75">
					  <div class="mdc-select__anchor" aria-labelledby="outlined-select-label">
					    <span class="mdc-notched-outline">
					      <span class="mdc-notched-outline__leading"></span>
					      <span class="mdc-notched-outline__notch">
					        <span id="outlined-select-label" class="mdc-floating-label">Tipo de veículo</span>
					      </span>
					      <span class="mdc-notched-outline__trailing"></span>
					    </span>
					    <span class="mdc-select__selected-text-container">
					      <span id="demo-selected-text" class="mdc-select__selected-text"></span>
					    </span>
					    <span class="mdc-select__dropdown-icon">
					      <svg
					          class="mdc-select__dropdown-icon-graphic"
					          viewBox="7 10 10 5" focusable="false">
					        <polygon
					            class="mdc-select__dropdown-icon-inactive"
					            stroke="none"
					            fill-rule="evenodd"
					            points="7 10 12 15 17 10">
					        </polygon>
					        <polygon
					            class="mdc-select__dropdown-icon-active"
					            stroke="none"
					            fill-rule="evenodd"
					            points="7 15 12 10 17 15">
					        </polygon>
					      </svg>
					    </span>
					  </div>
					
					  <!-- Other elements from the select remain. -->
					  <div class="mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--fullwidth">
					  	<ul class="mdc-list" role="listbox" aria-label="Food picker listbox">
					      <li class="mdc-list-item mdc-list-item--selected" aria-selected="true" data-value="" role="option">
					        <span class="mdc-list-item__ripple"></span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="grains" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 1
					        </span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="vegetables" aria-disabled="true" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 2
					        </span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="vegetables" aria-disabled="true" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 3
					        </span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="vegetables" aria-disabled="true" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 4
					        </span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="vegetables" aria-disabled="true" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 5
					        </span>
					      </li>
					      <li class="mdc-list-item" aria-selected="false" data-value="vegetables" aria-disabled="true" role="option">
					        <span class="mdc-list-item__ripple"></span>
					        <span class="mdc-list-item__text">
					          veiculo 6
					        </span>
					      </li>
					    </ul>
					  </div>
					</div>
		        </div>
	      </div>
	      <div class="modal-body px-5">
	        <div class="row pb-4">
	        	<div class="mdc-data-table">
  <div class="mdc-data-table__table-container">
    <table class="mdc-data-table__table" aria-label="Dessert calories">
      <thead>
        <tr class="mdc-data-table__header-row">
          <th class="mdc-data-table__header-cell mdc-data-table__header-cell--checkbox" role="columnheader" scope="col">
            <div class="mdc-checkbox mdc-data-table__header-row-checkbox mdc-checkbox--selected">
              <input type="checkbox" class="mdc-checkbox__native-control" aria-label="Toggle all rows"/>
              <div class="mdc-checkbox__background">
                <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
                  <path class="mdc-checkbox__checkmark-path" fill="none" d="M1.73,12.91 8.1,19.28 22.79,4.59" />
                </svg>
                <div class="mdc-checkbox__mixedmark"></div>
              </div>
              <div class="mdc-checkbox__ripple"></div>
            </div>
          </th>
          <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Signal name</th>
          <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Status</th>
          <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Severity</th>
          <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Stage</th>
          <th class="mdc-data-table__header-cell mdc-data-table__header-cell--numeric" role="columnheader" scope="col">Time</th>
          <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Roles</th>
        </tr>
      </thead>
      <tbody class="mdc-data-table__content">
        <tr data-row-id="u0" class="mdc-data-table__row">
          <td class="mdc-data-table__cell mdc-data-table__cell--checkbox">
            <div class="mdc-checkbox mdc-data-table__row-checkbox">
              <input type="checkbox" class="mdc-checkbox__native-control" aria-labelledby="u0"/>
              <div class="mdc-checkbox__background">
                <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
                  <path class="mdc-checkbox__checkmark-path" fill="none" d="M1.73,12.91 8.1,19.28 22.79,4.59" />
                </svg>
                <div class="mdc-checkbox__mixedmark"></div>
              </div>
              <div class="mdc-checkbox__ripple"></div>
            </div>
          </td>
          <th class="mdc-data-table__cell" scope="row" id="u0">Arcus watch slowdown</th>
          <td class="mdc-data-table__cell">Online</td>
          <td class="mdc-data-table__cell">Medium</td>
          <td class="mdc-data-table__cell">Triaged</td>
          <td class="mdc-data-table__cell mdc-data-table__cell--numeric">0:33</td>
          <td class="mdc-data-table__cell">Allison Brie</td>
        </tr>
        <tr data-row-id="u1" class="mdc-data-table__row mdc-data-table__row--selected" aria-selected="true">
          <td class="mdc-data-table__cell mdc-data-table__cell--checkbox">
            <div class="mdc-checkbox mdc-data-table__row-checkbox mdc-checkbox--selected">
              <input type="checkbox" class="mdc-checkbox__native-control" checked aria-labelledby="u1"/>
              <div class="mdc-checkbox__background">
                <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
                  <path class="mdc-checkbox__checkmark-path" fill="none" d="M1.73,12.91 8.1,19.28 22.79,4.59" />
                </svg>
                <div class="mdc-checkbox__mixedmark"></div>
              </div>
              <div class="mdc-checkbox__ripple"></div>
            </div>
          </td>
          <th class="mdc-data-table__cell" scope="row" id="u1">monarch: prod shared ares-managed-features-provider-heavy</th>
          <td class="mdc-data-table__cell">Offline</td>
          <td class="mdc-data-table__cell">Huge</td>
          <td class="mdc-data-table__cell">Triaged</td>
          <td class="mdc-data-table__cell mdc-data-table__cell--numeric">0:33</td>
          <td class="mdc-data-table__cell">Brie Larson</td>
        </tr>
        <tr data-row-id="u2" class="mdc-data-table__row mdc-data-table__row--selected" aria-selected="true">
          <td class="mdc-data-table__cell mdc-data-table__cell--checkbox">
            <div class="mdc-checkbox mdc-data-table__row-checkbox mdc-checkbox--selected">
              <input type="checkbox" class="mdc-checkbox__native-control" checked aria-labelledby="u2"/>
              <div class="mdc-checkbox__background">
                <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
                  <path class="mdc-checkbox__checkmark-path" fill="none" d="M1.73,12.91 8.1,19.28 22.79,4.59" />
                </svg>
                <div class="mdc-checkbox__mixedmark"></div>
              </div>
              <div class="mdc-checkbox__ripple"></div>
            </div>
          </td>
          <th class="mdc-data-table__cell" scope="row" id="u2">monarch: prod shared ares-managed-features-provider-heavy</th>
          <td class="mdc-data-table__cell">Online</td>
          <td class="mdc-data-table__cell">Minor</td>
          <td class="mdc-data-table__cell">Not triaged</td>
          <td class="mdc-data-table__cell mdc-data-table__cell--numeric">0:33</td>
          <td class="mdc-data-table__cell">Jeremy Lake</td>
        </tr>
        <tr data-row-id="u3" class="mdc-data-table__row">
          <td class="mdc-data-table__cell mdc-data-table__cell--checkbox">
            <div class="mdc-checkbox mdc-data-table__row-checkbox">
              <input type="checkbox" class="mdc-checkbox__native-control" aria-labelledby="u3"/>
              <div class="mdc-checkbox__background">
                <svg class="mdc-checkbox__checkmark" viewBox="0 0 24 24">
                  <path class="mdc-checkbox__checkmark-path" fill="none" d="M1.73,12.91 8.1,19.28 22.79,4.59" />
                </svg>
                <div class="mdc-checkbox__mixedmark"></div>
              </div>
              <div class="mdc-checkbox__ripple"></div>
            </div>
          </td>
          <th class="mdc-data-table__cell" scope="row" id="u3">Arcus watch slowdown</th>
          <td class="mdc-data-table__cell">Online</td>
          <td class="mdc-data-table__cell">Negligible</td>
          <td class="mdc-data-table__cell">Triaged</td>
          <td class="mdc-data-table__cell mdc-data-table__cell--numeric">0:33</td>
          <td class="mdc-data-table__cell">Angelina Cheng</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
	        </div>
	      </div>
	      <div class="modal-footer border-0 row pb-4 pr-5">
	        	<a class="col-6" href="/">
	        	<button class="mdc-button" style="color:#702094">
				<div class="mdc-button__ripple"></div>
					  <i class="material-icons mdc-button__icon" aria-hidden="true"
					    >arrow_back</i
					  >
				<span class="mdc-button__label">Voltar ao menu</span>
				</button></a>
				<a class="col-5" href="/concluido"><button class="mdc-button px-3 w-100 mdc-button--raised" style="background:#702094; border-radius: 20px">
		  			<span class="mdc-button__label">Salvar</span>
				</button></a>
	       </div>
	    </div>
	  </div>
	</div>
	<script>
		$( document ).ready(function() {
			$('#staticBackdrop').modal("show");
			mdc.ripple.MDCRipple.attachTo(document.querySelector('.mdc-button'));
			mdc.textField.MDCTextField.attachTo(document.querySelector('.mdc-text-field'));
			mdc.select.MDCSelect.attachTo(document.querySelector('.mdc-select'));
		})
	</script>
</body>
</html>