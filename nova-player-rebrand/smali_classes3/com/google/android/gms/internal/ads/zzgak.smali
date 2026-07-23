.class abstract Lcom/google/android/gms/internal/ads/zzgak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:Ljava/lang/String;


# instance fields
.field final zzb:Lcom/google/android/gms/internal/ads/zzgaj;

.field final zzc:Lcom/google/android/gms/internal/ads/zzgai;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgaj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgai;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzc:Lcom/google/android/gms/internal/ads/zzgai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzd:Ljava/lang/String;

    const-string p1, "_3p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zze:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzf:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzh:Ljava/lang/String;

    return-void
.end method

.method private final zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    .line 2
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzh:Ljava/lang/String;

    const-string v0, "not null"

    const-string v1, "null"

    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    move-object v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x78

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hashKey is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzgah;
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgak;->zze(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v3, "paid_3p_hash_key"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgaj;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzgak;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    return-object p1

    .line 1
    :catch_0
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgah;-><init>()V

    return-object p1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_9

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgak;->zzd(Z)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    if-eqz v0, :cond_5

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzg:Ljava/lang/String;

    goto :goto_3

    .line 9
    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzf:Ljava/lang/String;

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    add-long/2addr v3, p3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_7

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    return-object p1

    .line 10
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgak;->zze(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_8

    if-nez p5, :cond_8

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgah;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgak;->zzd(Z)J

    move-result-wide p4

    invoke-direct {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzgah;-><init>(Ljava/lang/String;J)V

    return-object p1

    .line 6
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzh:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgah;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v2, "paid_3p_hash_key"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgak;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgak;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzg:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzf:Ljava/lang/String;

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zze:Ljava/lang/String;

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzd:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method final zzd(Z)J
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzf:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgaj;->zzd(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zze(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zze:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzd:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzgah;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzg:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzf:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zze:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzd:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgah;-><init>(Ljava/lang/String;J)V

    return-object p2

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzh:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final zzg(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Lcom/google/android/gms/internal/ads/zzgaj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgaj;->zzg(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
