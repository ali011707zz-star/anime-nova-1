.class final Lcom/google/android/gms/internal/ads/zzczu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzczw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczw;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzczw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzczw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczw;->zzk()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void
.end method
