export function FlyingLeapLogo({ className = "h-10" }: { className?: string }) {
  return (
    <div className={`flex items-center select-none ${className}`}>
      <img
        src="https://assets.cdn.filesafe.space/33NL2L4kFbwfFAzRv5DM/media/6ae955f0736386d0dcf64711.png"
        alt="Flying Leap Studio"
        className="h-10 sm:h-12 w-auto object-contain"
      />
    </div>
  );
}
