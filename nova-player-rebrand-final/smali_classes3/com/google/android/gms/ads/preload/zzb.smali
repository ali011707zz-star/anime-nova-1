.class public abstract Lcom/google/android/gms/ads/preload/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/ads/internal/client/zzck;

.field private final zzb:Lcom/google/android/gms/ads/AdFormat;

.field private final zzc:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/zzb;->zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/preload/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/preload/zzb;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/preload/zzb;->zzb:Lcom/google/android/gms/ads/AdFormat;

    return-void
.end method


# virtual methods
.method public final zzg()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/preload/zzb;->zza:Lcom/google/android/gms/ads/internal/client/zzck;

    iget-object v1, p0, Lcom/google/android/gms/ads/preload/zzb;->zzb:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdFormat;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
