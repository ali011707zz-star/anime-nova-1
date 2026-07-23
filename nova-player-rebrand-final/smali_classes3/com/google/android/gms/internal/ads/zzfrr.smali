.class final Lcom/google/android/gms/internal/ads/zzfrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzea;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfsa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsa;Lcom/google/android/gms/ads/internal/client/zzea;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrr;->zzb:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrr;->zzb:Lcom/google/android/gms/internal/ads/zzfsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzF(Lcom/google/android/gms/ads/internal/client/zzea;)V

    return-void
.end method
