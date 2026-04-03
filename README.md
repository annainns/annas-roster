# Anna's Roster — Setup Guide

## What you need (already done ✅)
- GitHub account
- Vercel account  
- Supabase account
- Node.js installed
- VS Code installed

---

## Step 1 — Set up your database in Supabase

1. Go to **supabase.com** and open your project
2. Click **SQL Editor** in the left sidebar
3. Click **New Query**
4. Open the file `supabase-setup.sql` from this folder in VS Code
5. Copy everything and paste it into the Supabase SQL editor
6. Click **Run**
7. You should see "Success" — your database is ready

---

## Step 2 — Get your Supabase keys

1. In Supabase, go to **Project Settings** → **API**
2. Copy these three values — you'll need them in Step 4:
   - **Project URL** (looks like: https://xxxx.supabase.co)
   - **anon public** key
   - **service_role** key (click to reveal)

---

## Step 3 — Get your Anthropic API key

1. Go to **console.anthropic.com**
2. Sign up or log in
3. Go to **API Keys** → **Create Key**
4. Copy the key (starts with sk-ant-)

---

## Step 4 — Create your environment file

1. Open the `annas-roster` folder in VS Code
2. Find the file called `.env.local.example`
3. Make a copy of it and rename the copy to `.env.local`
4. Fill in your values:

```
ANTHROPIC_API_KEY=sk-ant-your-key-here
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
CRON_SECRET=monday-drop-anna-2024
```

---

## Step 5 — Run the app locally (to test it)

1. Open VS Code
2. Go to **Terminal** → **New Terminal**
3. Type this and press Enter:
```
npm install
```
4. When that finishes, type:
```
npm run dev
```
5. Open your browser and go to: **http://localhost:3000**
6. You should see Anna's Roster! 🎉

---

## Step 6 — Deploy to Vercel (go live)

1. Open Terminal in VS Code and run:
```
npx vercel
```
2. It will ask you to log in — follow the prompts
3. When asked "Set up and deploy?" → Yes
4. When asked about the project name → press Enter (keep default)
5. It will deploy and give you a live URL like: **annas-roster.vercel.app**

---

## Step 7 — Add your environment variables to Vercel

1. Go to your Vercel dashboard
2. Click on the **annas-roster** project
3. Go to **Settings** → **Environment Variables**
4. Add each variable from your `.env.local` file:
   - ANTHROPIC_API_KEY
   - NEXT_PUBLIC_SUPABASE_URL
   - NEXT_PUBLIC_SUPABASE_ANON_KEY
   - SUPABASE_SERVICE_ROLE_KEY
   - CRON_SECRET
5. Click **Save**
6. Go to **Deployments** → click the three dots → **Redeploy**

---

## You're live! 🚀

Your Monday Drop is already scheduled — it runs every Monday at 9am automatically.

---

## Need help?
Come back to Claude and say "I need help with Anna's Roster setup" — I'll pick right up.
