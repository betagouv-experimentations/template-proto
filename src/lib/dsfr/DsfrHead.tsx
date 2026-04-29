import Link from "next/link";
import {
  DsfrHeadBase,
  type DsfrHeadProps,
} from "@codegouvfr/react-dsfr/next-app-router/server-only-index";

export function DsfrHead(props: DsfrHeadProps): React.ReactElement {
  return <DsfrHeadBase {...props} Link={Link} />;
}
