import React, { version } from 'react';
import ReactDOM from 'react-dom';

import { MyComponent } from './components/app/component.react';
import { APP_HTML_DIV_ELEMENT } from './shares/constant';
import { DI } from './shares/injector';

DI.register('Framework', {
  name: 'React',
  version: version
});
require('./shares/register');
ReactDOM.render(<MyComponent />, APP_HTML_DIV_ELEMENT);
