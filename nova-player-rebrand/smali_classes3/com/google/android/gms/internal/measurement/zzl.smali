.class public final Lcom/google/android/gms/internal/measurement/zzl;
.super Lcom/google/android/gms/internal/measurement/zzal;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    return-void
.end method


# virtual methods
.method public final zzcA(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "getEventName"

    const/4 v6, 0x3

    const-string v7, "getTimestamp"

    const-string v8, "getParamValue"

    const-string v9, "getParams"

    const-string v11, "setParamValue"

    const/4 v12, 0x4

    const-string v13, "setEventName"

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v10, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v12

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v14

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v15

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v15, :cond_7

    if-eq v4, v14, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v12, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 24
    invoke-super/range {p0 .. p3}, Lcom/google/android/gms/internal/measurement/zzal;->zzcA(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    return-object v1

    .line 20
    :cond_1
    invoke-static {v11, v14, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 21
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v3

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Lcom/google/android/gms/internal/measurement/zzao;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzaa;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 15
    :cond_2
    invoke-static {v13, v15, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 16
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzao;->zzg:Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v2

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaa;->zzc(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 16
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal event name"

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    invoke-static {v7, v10, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zza()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v2

    .line 8
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzf()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzal;

    .line 10
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzal;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzal;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzao;)V

    goto :goto_2

    :cond_6
    return-object v2

    .line 4
    :cond_7
    invoke-static {v8, v15, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zze(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object v1

    return-object v1

    .line 2
    :cond_8
    invoke-static {v5, v10, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzl;->zzb:Lcom/google/android/gms/internal/measurement/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzab;->zzc()Lcom/google/android/gms/internal/measurement/zzaa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzas;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaa;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
