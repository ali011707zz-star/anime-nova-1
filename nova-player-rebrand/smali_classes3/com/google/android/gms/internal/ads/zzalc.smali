.class public final Lcom/google/android/gms/internal/ads/zzalc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:J

.field public final zzg:Lcom/google/android/gms/internal/ads/zzv;

.field public final zzh:I

.field public final zzi:[J

.field public final zzj:[J

.field public final zzk:I

.field private final zzl:[Lcom/google/android/gms/internal/ads/zzald;


# direct methods
.method public constructor <init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzald;I[J[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzd:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzalc;->zze:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzf:J

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzl:[Lcom/google/android/gms/internal/ads/zzald;

    iput p14, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzk:I

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzi:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzj:[J

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzald;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzl:[Lcom/google/android/gms/internal/ads/zzald;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzalc;
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzl:[Lcom/google/android/gms/internal/ads/zzald;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzk:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzi:[J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzj:[J

    move-object/from16 v16, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalc;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalc;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:I

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzalc;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzalc;->zzf:J

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzalc;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzald;I[J[J)V

    return-object v1
.end method
