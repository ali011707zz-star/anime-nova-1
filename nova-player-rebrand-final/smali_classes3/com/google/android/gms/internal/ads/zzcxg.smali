.class final synthetic Lcom/google/android/gms/internal/ads/zzcxg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcxj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxj;Lcom/google/android/gms/internal/ads/zzflg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zza:Lcom/google/android/gms/internal/ads/zzcxj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zza:Lcom/google/android/gms/internal/ads/zzcxj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzj(Lcom/google/android/gms/internal/ads/zzflg;Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
