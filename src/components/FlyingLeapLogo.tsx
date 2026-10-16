export function FlyingLeapLogo({ className = "h-10" }: { className?: string }) {
  return (
    <div className={`flex items-center select-none ${className}`}>
      <img
        src="https://vibe.filesafe.space/1792124205677784135/attachments/17e9fce5-09ee-4dc9-b22a-881d8bfc122d.png"
        alt="Flying Leap Studio"
        className="h-10 sm:h-12 w-auto object-contain"
      />
    </div>
  );
}
