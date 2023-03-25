import {Technology} from "./Technology";

export interface Article {
  id: bigint;
  name: string;
  content: string;
  video: string;
  technology: Technology
}
