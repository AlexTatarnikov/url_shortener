import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { tap } from 'rxjs/operators';
import { Link } from '../models';
import { Observable } from 'rxjs';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  })
};

@Injectable({ providedIn: 'root' })
export class LinkService {
  constructor(private http: HttpClient) { }

  createLink(link: Link): Observable<Link> {
    return this.http.post<Link>('/api/v1/links', link, httpOptions).pipe(
      tap((link: Link) => link.created = true)
    );
  }
}
