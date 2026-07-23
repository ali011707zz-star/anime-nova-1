.class public final Lcom/google/android/gms/internal/ads/zzaod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzv;

.field private zzm:I

.field private zzn:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeq;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zza:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaod;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzj:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    .line 8
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzm:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 9
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzm:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 10
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzk:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzn:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    .line 12
    invoke-virtual {p1, v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zza:Lcom/google/android/gms/internal/ads/zzeq;

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadv;->zzc(Lcom/google/android/gms/internal/ads/zzeq;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_3

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-ne v5, v7, :cond_3

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzb:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-ne v5, v7, :cond_3

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzadu;->zza:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 15
    invoke-static {v5, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzt;

    .line 16
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzf:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zze:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzadu;->zza:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    .line 20
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzb:I

    .line 21
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzc:Ljava/lang/String;

    .line 22
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzd:I

    .line 23
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzf:I

    .line 24
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    const-string v8, "audio/ac3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 26
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    .line 27
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_5
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzd:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzm:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadu;->zze:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    .line 28
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v7, v2

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    int-to-long v4, v4

    div-long/2addr v7, v4

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzk:J

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzg:Lcom/google/android/gms/internal/ads/zzagh;

    .line 30
    invoke-interface {v2, v0, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    goto/16 :goto_0

    .line 2
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzj:Z

    const/16 v4, 0xb

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzj:Z

    goto :goto_2

    .line 4
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_9

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzj:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 5
    aput-byte v4, v6, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    .line 6
    aput-byte v5, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzi:I

    goto/16 :goto_0

    :cond_9
    if-ne v0, v4, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaod;->zzj:Z

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    .line 0
    return-void
.end method
