import { test, expect } from '@playwright/test';

test('has title', async ({ page }) => {
  await page.goto('https://python.org/');
  //await page.goto('https://google.co.in')

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Welcome to Python.org/);
});

test('get started link', async ({ page }) => {
  await page.goto('https://python.org/');

  // Click the get started link.
  await page.getByRole('link', { name: 'About' }).click

  await expect(page).toHaveTitle(/About Python™ | Python.org/)
});
