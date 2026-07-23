.class final Lcom/google/android/gms/internal/ads/zzfin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzcb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Lcom/google/android/gms/ads/internal/client/zzcb;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfio;->zzw()Lcom/google/android/gms/internal/ads/zzdtz;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfin;->zza:Lcom/google/android/gms/ads/internal/client/zzcb;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzcb;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
