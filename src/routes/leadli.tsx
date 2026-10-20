import { createFileRoute, Outlet } from "@tanstack/react-router";

export const Route = createFileRoute("/leadli")({
  component: LeadliLayout,
});

function LeadliLayout() {
  return <Outlet />;
}
