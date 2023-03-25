import {Technology} from "./Technology";

export interface Command {
  id: bigint;
  name: string;
  description: string;
  technology: Technology;
}
