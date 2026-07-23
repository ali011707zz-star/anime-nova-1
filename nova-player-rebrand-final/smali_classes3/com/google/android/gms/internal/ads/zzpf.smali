.class public final Lcom/google/android/gms/internal/ads/zzpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpo;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgru;

.field private static final zzb:Ljava/util/Random;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zze:Ljava/util/HashMap;

.field private zzf:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbf;

.field private zzh:Ljava/lang/String;

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpf;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpf;->zzb:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgru;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzg:Lcom/google/android/gms/internal/ads/zzbf;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzi:J

    return-void
.end method

.method static synthetic zzh()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpf;->zzp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpe;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzm(Lcom/google/android/gms/internal/ads/zzpe;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpe;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpf;->zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzc(Lcom/google/android/gms/internal/ads/zzmy;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzh()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzh()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzh()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;J)V

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;

    :cond_2
    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzpe;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzi:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    return-void
.end method

.method private final zzn()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzi:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzpe;

    .line 2
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;->zzc(ILcom/google/android/gms/internal/ads/zzwk;)V

    .line 3
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    if-nez v8, :cond_0

    .line 5
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpe;->zzh()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpe;->zzh()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    move-object v4, v5

    move-wide v2, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpf;->zzp()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpe;

    .line 8
    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(Lcom/google/android/gms/internal/ads/zzpf;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzwk;)V

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4
    return-object v4
.end method

.method private static zzp()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 1
    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpf;->zzb:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzpn;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;->zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-eqz v1, :cond_2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzn()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzg()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzf()I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    if-ne v2, v3, :cond_6

    :cond_2
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    :cond_3
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;JI)V

    .line 5
    invoke-direct {p0, v2, v8}, Lcom/google/android/gms/internal/ads/zzpf;->zzo(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzpe;->zzj(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    .line 7
    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzc(I)J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 9
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzpe;->zzj(Z)V

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zzk()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzpe;->zzl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzc(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 14
    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzg:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzg:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzg:Lcom/google/android/gms/internal/ads/zzbf;

    .line 4
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzpe;->zza(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzd(Lcom/google/android/gms/internal/ads/zzmy;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpf;->zzm(Lcom/google/android/gms/internal/ads/zzpe;)V

    .line 9
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzpn;->zzd(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzl(Lcom/google/android/gms/internal/ads/zzmy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzmy;I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpe;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzd(Lcom/google/android/gms/internal/ads/zzmy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzm(Lcom/google/android/gms/internal/ads/zzpe;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zzk()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzd(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzl(Lcom/google/android/gms/internal/ads/zzmy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf()Ljava/lang/String;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzh:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzm(Lcom/google/android/gms/internal/ads/zzpe;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zze:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpe;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zzi()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzf:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpe;->zze()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzd(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzi()J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzbe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    return-object v0
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzbd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    return-object v0
.end method
