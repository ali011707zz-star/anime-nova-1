.class public Lcom/google/android/gms/internal/ads/zzgus;
.super Lcom/google/android/gms/internal/ads/zzgun;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvn;


# instance fields
.field private final transient emptySet:Lcom/google/android/gms/internal/ads/zzgup;

.field private transient zza:Lcom/google/android/gms/internal/ads/zzgup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgui;ILjava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgun;-><init>(Lcom/google/android/gms/internal/ads/zzgui;I)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwg;->zza:Lcom/google/android/gms/internal/ads/zzgwg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgus;->emptySet:Lcom/google/android/gms/internal/ads/zzgup;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgus;->zza:Lcom/google/android/gms/internal/ads/zzgup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgur;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgur;-><init>(Lcom/google/android/gms/internal/ads/zzgus;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgus;->zza:Lcom/google/android/gms/internal/ads/zzgup;

    :cond_0
    return-object v0
.end method
