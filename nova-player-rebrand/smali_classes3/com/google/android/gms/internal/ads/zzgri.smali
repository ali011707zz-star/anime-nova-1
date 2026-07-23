.class final Lcom/google/android/gms/internal/ads/zzgri;
.super Lcom/google/android/gms/internal/ads/zzgrp;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzgqq;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgri;->zza:Lcom/google/android/gms/internal/ads/zzgqq;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgrp;-><init>(Lcom/google/android/gms/internal/ads/zzgrr;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zzc(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrp;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzn(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgri;->zza:Lcom/google/android/gms/internal/ads/zzgqq;

    .line 3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqq;->zzb(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method final zzd(I)I
    .locals 0

    .line 0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method
