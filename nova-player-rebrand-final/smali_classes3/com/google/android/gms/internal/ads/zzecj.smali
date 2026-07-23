.class public final Lcom/google/android/gms/internal/ads/zzecj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaqr;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecj;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqq;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqr;->zzb(Lcom/google/android/gms/internal/ads/zzaqu;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaqv;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecj;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->zza()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->zzd()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
