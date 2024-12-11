import express from "express";
import { PrismaClient } from '@prisma/client';
const router = express.Router();

/* GET users listing. */
router.get('/', async function(req, res, next) {
  const prisma = new PrismaClient();
  const students = await prisma.student.findMany()

  res.json({data: students});
});

export default router;
