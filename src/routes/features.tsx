import { queryOptions, useSuspenseQuery } from "@tanstack/react-query";
import { createFileRoute } from "@tanstack/react-router";
import { ChangelogPage } from "@/components/home/ChangelogPage";
import { getChangelog } from "@/lib/changelog.functions";

const changelogQuery = queryOptions({
  queryKey: ["changelog"],
  queryFn: () => getChangelog(),
});

export const Route = createFileRoute("/features")({
  loader: ({ context }) => context.queryClient.ensureQueryData(changelogQuery),
  head: () => ({
    meta: [
      {
        title: "Leadli Changelog | What's New | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Every update that ships to your Leadli account — new features, improvements, and fixes, straight from the build team.",
      },
      {
        property: "og:title",
        content: "Leadli Changelog | What's New",
      },
      {
        property: "og:description",
        content:
          "Every update that ships to your Leadli account — new features, improvements, and fixes.",
      },
      {
        property: "og:type",
        content: "website",
      },
      {
        name: "twitter:card",
        content: "summary_large_image",
      },
    ],
  }),
  component: ChangelogRoute,
});

function ChangelogRoute() {
  const { data } = useSuspenseQuery(changelogQuery);
  return <ChangelogPage entries={data.entries} />;
}
