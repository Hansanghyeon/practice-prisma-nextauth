import { LoginButton, LogoutButton, ProfileButton, RegisterButton } from "@/components/button";

export default function Home() {
  return (
    <main className="flex justify-center items-center">
      <div>
        <LoginButton />
        <RegisterButton />
        <LogoutButton />
        <ProfileButton />
      </div>
    </main>
  )
}
