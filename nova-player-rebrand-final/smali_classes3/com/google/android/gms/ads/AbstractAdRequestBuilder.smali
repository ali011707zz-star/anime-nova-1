.class public abstract Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/ads/internal/client/zzej;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzej;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzej;->zze(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x6c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Value "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " contains invalid character \',\' (comma). The server will parse it as a list of comma-separated values."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzej;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zza(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzej;->zzc(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzf(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 6

    .line 1
    const-string v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    if-gt v0, v1, :cond_0

    move v5, v2

    :cond_0
    const-string v0, "Content URL must not exceed %d in length.  Provided length was %d."

    .line 6
    invoke-static {v5, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    const-string p1, "neighboring content URLs list should not be null"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzh(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzj(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zze(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Z)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzk(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Z)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzn(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->self()Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object p1

    return-object p1
.end method
