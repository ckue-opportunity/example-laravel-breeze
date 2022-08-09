import '../sass/app.scss'; // import custom scss
import './bootstrap'; // import bootstrap
import Alpine from 'alpinejs';

window.Alpine = Alpine;
Alpine.start();

// Test alert
alert('This test alert pops up when the page is (re)loaded :-)');
