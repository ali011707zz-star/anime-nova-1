.class final Lcom/google/android/gms/internal/ads/zzgwb;
.super Lcom/google/android/gms/internal/ads/zzguf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgwc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzguf;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzw()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzm(IILjava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzv()[Ljava/lang/Object;

    move-result-object v1

    add-int/2addr p1, p1

    .line 2
    aget-object v1, v1, p1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzv()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
