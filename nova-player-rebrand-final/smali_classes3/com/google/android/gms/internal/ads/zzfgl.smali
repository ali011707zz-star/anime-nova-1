.class public final Lcom/google/android/gms/internal/ads/zzfgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfgl;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfgl;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfgj;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgl;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfln;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzhk:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzi()Lcom/google/android/gms/internal/ads/zzcdp;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Lcom/google/android/gms/internal/ads/zzcdp;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdp;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzhA:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzhj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzffl;

    .line 10
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzffl;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfld;->zzc:Lcom/google/android/gms/internal/ads/zzfld;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzffm;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzffm;-><init>(Lcom/google/android/gms/internal/ads/zzfgj;)V

    .line 11
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzfln;->zza(Lcom/google/android/gms/internal/ads/zzfld;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfkv;Lcom/google/android/gms/internal/ads/zzfls;)Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfga;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzffz;-><init>()V

    .line 12
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfga;-><init>(Lcom/google/android/gms/internal/ads/zzfgj;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzflm;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    move-object v4, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffw;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-direct {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzffw;-><init>(Lcom/google/android/gms/internal/ads/zzfkz;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzflm;->zzb:Lcom/google/android/gms/internal/ads/zzflv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfkz;->zze()Lcom/google/android/gms/internal/ads/zzflg;

    move-result-object v4

    .line 13
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzflg;->zzf:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzffq;-><init>(Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzflv;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object v1

    .line 14
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffz;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfgl;->zza()Lcom/google/android/gms/internal/ads/zzfgj;

    move-result-object v0

    return-object v0
.end method
