/*
 * Welcome to your app's main JavaScript file!
 *
 * This file will be included onto the page via the importmap() Twig function,
 * which should already be in your base.html.twig.
 */
import "./styles/app.scss";
import { Tooltip, Toast, Popover } from "./bootstrap";
import "./bootstrap";

// $(document).load(
//   $(function () {
//     $('[data-bs-toggle="popover"]').popover();
//   })
// );
jQuery.noConflict();
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();
});