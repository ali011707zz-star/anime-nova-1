.class final Lcom/google/android/gms/internal/ads/zzgdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgec;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdx;->zza:Lcom/google/android/gms/internal/ads/zzgec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdv;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdx;->zza:Lcom/google/android/gms/internal/ads/zzgec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgec;->zza()Lcom/google/android/gms/internal/ads/zzgoe;

    move-result-object v0

    const/16 v1, 0x33

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgec;->zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
