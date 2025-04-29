import type { Metadata } from 'next'
import './globals.css'

export const metadata: Metadata = {
  title: 'v0 App',
  description: 'Created with v0',
  generator: 'v0.dev',
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html lang="en">
      <body className={cn("min-h-screen font-sans antialiased", fontSans.variable)}>
        <ThemeProvider attribute="class" defaultTheme="dark" enableSystem>
          <div className="relative flex min-h-screen flex-col overflow-y-auto">
            {children}
          </div>
        </ThemeProvider>
      </body>
    </html>
  )
}
