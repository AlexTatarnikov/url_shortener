import { Component } from '@angular/core';
import templateString from './link.component.html'
import styleString from './link.component.scss'
import { Link } from '../models';
import { LinkService } from '../services';

@Component({
  selector: 'url-input',
  template: templateString,
  styles: [styleString]
})
export class LinkComponent  {
  link = new Link;

  shorten() {
    this.link.generateCode()
    this.linkService.createLink(this.link)
      .subscribe(
        link => this.link = link,
        _ => this.shorten()
       );
  }
  reset() {
    this.link = new Link;
  }

  shortenedUrl() {
    return window.location.origin + '/' + this.link.code
  }

  constructor(private linkService: LinkService) { }
}
