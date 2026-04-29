import { createGetHtmlAttributes } from "@codegouvfr/react-dsfr/next-app-router/server-only-index";
import { defaultColorScheme } from "./config";

export const { getHtmlAttributes } = createGetHtmlAttributes({ defaultColorScheme });
