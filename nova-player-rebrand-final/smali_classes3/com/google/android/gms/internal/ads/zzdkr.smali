.class public Lcom/google/android/gms/internal/ads/zzdkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdmc;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcjl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    return-object v0
.end method

.method public final zzc()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/ads/zzczw;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdje;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzczw;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdje;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdje;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdje;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkr;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkp;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
