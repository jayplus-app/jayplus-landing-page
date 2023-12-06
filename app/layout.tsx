import type { Metadata } from 'next'
import './globals.css'

export const metadata: Metadata = {
  title: 'Landing Page',
  description: 'Some Description',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang='en'>
      <body>
        <nav>Landing Page JayPlus</nav>
        {children}
      </body>
    </html>
  )
}
