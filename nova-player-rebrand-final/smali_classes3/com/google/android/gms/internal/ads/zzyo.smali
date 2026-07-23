.class public final Lcom/google/android/gms/internal/ads/zzyo;
.super Lcom/google/android/gms/internal/ads/zzat;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zzc:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzat;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzat;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsniff failures: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
