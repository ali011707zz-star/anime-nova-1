.class final Lcom/google/android/gms/internal/ads/zzgvd;
.super Lcom/google/android/gms/internal/ads/zzgws;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgve;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgve;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zza:Lcom/google/android/gms/internal/ads/zzgve;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgws;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zza:Lcom/google/android/gms/internal/ads/zzgve;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgve;->zzb:Lcom/google/android/gms/internal/ads/zzgqt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
