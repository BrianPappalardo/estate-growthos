import React from "react";

export function FlyingLeapLogo({ className = "h-10" }: { className?: string }) {
  return (
    <div className={`flex items-center gap-3 select-none ${className}`}>
      {/* Hand-drawn/rocket styled badge matching upload reference */}
      <div className="relative w-11 h-11 shrink-0 flex items-center justify-center">
        {/* Orbit ring / crescent */}
        <svg viewBox="0 0 100 100" className="w-full h-full overflow-visible">
          {/* Subtle dotted orbit */}
          <circle
            cx="50"
            cy="50"
            r="38"
            fill="none"
            stroke="#f59e0b"
            strokeWidth="2.5"
            strokeDasharray="4 4"
            className="opacity-70"
          />
          {/* Moon / planet body */}
          <circle cx="50" cy="50" r="32" fill="#fef3c7" stroke="#f59e0b" strokeWidth="2.5" />
          {/* Craters */}
          <circle cx="42" cy="42" r="5" fill="#fde68a" />
          <circle cx="62" cy="55" r="4" fill="#fde68a" />
          <circle cx="46" cy="64" r="3" fill="#fde68a" />
          {/* Rocket taking leap */}
          <g transform="translate(18, 12) rotate(45)">
            <path d="M 14,0 C 22,0 26,12 26,26 L 2,26 C 2,12 6,0 14,0 Z" fill="#3b49df" />
            {/* Rocket window */}
            <circle cx="14" cy="12" r="4" fill="#ffffff" />
            {/* Rocket fins */}
            <path d="M 2,22 L -3,28 L 2,28 Z" fill="#f97316" />
            <path d="M 26,22 L 31,28 L 26,28 Z" fill="#f97316" />
            {/* Rocket exhaust flame */}
            <path d="M 8,26 L 14,35 L 20,26 Z" fill="#f59e0b" />
          </g>
          {/* Sparkles */}
          <circle cx="85" cy="24" r="1.5" fill="#3b49df" />
          <circle cx="18" cy="78" r="1.5" fill="#f97316" />
        </svg>
      </div>

      <div className="flex flex-col leading-tight">
        <span className="font-extrabold tracking-tight text-[1.1rem] uppercase text-[#3344b8]">
          FLYING LEAP
        </span>
        <span className="font-semibold tracking-[0.25em] text-[0.7rem] uppercase text-[#f97316]">
          STUDIO
        </span>
      </div>
    </div>
  );
}
