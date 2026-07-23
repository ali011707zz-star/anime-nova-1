.class final Lcom/google/android/gms/internal/ads/zzaqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaex;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzagh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaql;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzv;

.field private final zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzaql;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Lcom/google/android/gms/internal/ads/zzaql;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaql;->zzb:I

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaql;->zze:I

    mul-int/2addr p1, p2

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaql;->zzd:I

    div-int/lit8 p1, p1, 0x8

    if-ne p2, p1, :cond_0

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaql;->zzc:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zze:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v1, "audio/wav"

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 5
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaql;->zzb:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaql;->zzc:I

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 11
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1c

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/2addr p3, p4

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Expected block size: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzf:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzh:J

    return-void
.end method

.method public final zzb(IJ)V
    .locals 7

    int-to-long v3, p1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Lcom/google/android/gms/internal/ads/zzaql;

    const/4 v2, 0x1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Lcom/google/android/gms/internal/ads/zzaql;IJJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqo;->zza()J

    move-result-wide p2

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzagh;->zzN(J)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaev;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    .line 1
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zze:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    move-object/from16 v8, p1

    .line 2
    invoke-interface {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Lcom/google/android/gms/internal/ads/zzaql;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaql;->zzd:I

    .line 3
    div-int/2addr v2, v3

    if-lez v2, :cond_2

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzf:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzh:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaql;->zzc:I

    int-to-long v13, v1

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    .line 4
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    sub-int v16, v1, v15

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const/4 v14, 0x1

    const/16 v17, 0x0

    .line 5
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    move/from16 v1, v16

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzh:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzh:J

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqi;->zzg:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
