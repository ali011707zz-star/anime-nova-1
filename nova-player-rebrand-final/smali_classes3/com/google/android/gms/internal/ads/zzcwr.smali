.class final synthetic Lcom/google/android/gms/internal/ads/zzcwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcwu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgzl;

.field private final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzgzl;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zza:Lcom/google/android/gms/internal/ads/zzcwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zza:Lcom/google/android/gms/internal/ads/zzcwu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zzb:Lcom/google/android/gms/internal/ads/zzgzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwr;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwf;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcwu;->zzc(Lcom/google/android/gms/internal/ads/zzgzl;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcwf;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
