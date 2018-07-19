export class Link {
  code: string;
  url: string;
  created: boolean;

  generateCode() {
    let text = "";
    let possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (let i = 0; i < 6; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));

    this.code = text;
  }
}
