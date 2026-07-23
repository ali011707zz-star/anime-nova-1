.class final synthetic Lcom/google/android/gms/internal/ads/zzeds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzedt;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbzu;

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedt;Lcom/google/android/gms/internal/ads/zzbzu;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/internal/ads/zzedt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Lcom/google/android/gms/internal/ads/zzbzu;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/internal/ads/zzedt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Lcom/google/android/gms/internal/ads/zzbzu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzedt;->zzb(Lcom/google/android/gms/internal/ads/zzbzu;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
