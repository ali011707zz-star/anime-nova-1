.class public final Lcom/google/android/gms/internal/ads/zzagi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaev;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/zzadv;->$r8$clinit:I

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    const/4 v1, -0x8

    if-ne p1, v1, :cond_1

    const/4 p1, 0x5

    aget-byte p1, v0, p1

    const/16 v1, 0x72

    if-ne p1, v1, :cond_1

    const/4 p1, 0x6

    aget-byte p1, v0, p1

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_1

    const/4 p1, 0x7

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzagh;JIIILcom/google/android/gms/internal/ads/zzagg;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzg:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzj(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:I

    if-nez v0, :cond_2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzd:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzagi;->zze:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzf:I

    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzf:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzg:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_3

    .line 2
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzagi;->zzd(Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzagg;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzagg;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:I

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzd:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzagi;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzf:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzg:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:I

    :cond_0
    return-void
.end method
