.class public final Lcom/google/android/gms/internal/ads/zzbdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzbej;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbeq;

.field private final zzg:Ljava/lang/Object;

.field private final zzh:Ljava/util/ArrayList;

.field private final zzi:Ljava/util/ArrayList;

.field private final zzj:Ljava/util/ArrayList;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzh:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzi:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzj:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzq:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzc:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzd:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbej;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzbej;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zze:Lcom/google/android/gms/internal/ads/zzbej;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbeq;

    invoke-direct {p1, p5, p6, p7}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>(III)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzf:Lcom/google/android/gms/internal/ads/zzbeq;

    return-void
.end method

.method private final zzm(Ljava/lang/String;ZFFFF)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzc:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzi:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzj:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbef;

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v7, p2, -0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbef;-><init>(FFFFI)V

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method private static final zzn(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    const/16 v3, 0x64

    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    if-le v4, v3, :cond_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_3

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbdu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzh:Ljava/util/ArrayList;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzl:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzn:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    const/16 v5, 0x64

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbdu;->zzn(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzi:Ljava/util/ArrayList;

    .line 2
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdu;->zzn(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzp:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbdu;->zzq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v9, v9, 0x20

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xe

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, 0xe

    add-int/2addr v9, v13

    add-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x14

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x20

    add-int v9, v9, v16

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "ActivityContent fetchId: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " score:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total_length:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n text: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n viewableText"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n signture: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n viewableSignture: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n viewableSignatureForVertical: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/String;ZFFFF)V
    .locals 1

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzbdu;->zzm(Ljava/lang/String;ZFFFF)V

    move-object p1, p0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzbdu;->zzm:I

    if-gez p3, :cond_0

    const-string p3, "ActivityContent: negative number of WebViews."

    .line 2
    sget p4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzi()V

    .line 5
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p3
.end method

.method public final zzg(Ljava/lang/String;ZFFFF)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzbdu;->zzm(Ljava/lang/String;ZFFFF)V

    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzl:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzj(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzn:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzn:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzl:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzj(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzn:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzn:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zze:Lcom/google/android/gms/internal/ads/zzbej;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzh:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzi:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzp:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zze()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzf:Lcom/google/android/gms/internal/ads/zzbeq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzi:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzj:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbeq;->zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzq:Ljava/lang/String;

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzj(II)I
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzd:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzb:I

    return p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zza:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzb:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public final zzk(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzl:I

    return-void
.end method

.method final zzl()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzk:I

    return v0
.end method
