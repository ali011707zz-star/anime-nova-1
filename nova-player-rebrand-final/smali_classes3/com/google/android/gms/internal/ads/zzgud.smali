.class final Lcom/google/android/gms/internal/ads/zzgud;
.super Lcom/google/android/gms/internal/ads/zzgsc;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzguf;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgsc;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgud;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgud;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
