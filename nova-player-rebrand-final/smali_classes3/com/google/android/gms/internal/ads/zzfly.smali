.class final synthetic Lcom/google/android/gms/internal/ads/zzfly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfls;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfls;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfly;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfly;->zzb:Lcom/google/android/gms/internal/ads/zzfls;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfly;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfly;->zzb:Lcom/google/android/gms/internal/ads/zzfls;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfmb;->zzd(Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
