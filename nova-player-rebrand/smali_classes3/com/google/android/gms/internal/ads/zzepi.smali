.class public final Lcom/google/android/gms/internal/ads/zzepi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeki;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzekm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzeki;Lcom/google/android/gms/internal/ads/zzekm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzc:Lcom/google/android/gms/internal/ads/zzfnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzb:Lcom/google/android/gms/internal/ads/zzekm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepi;->zza:Lcom/google/android/gms/internal/ads/zzeki;

    return-void
.end method

.method static final zze(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepi;->zza:Lcom/google/android/gms/internal/ads/zzeki;

    .line 2
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzeki;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzemz;

    const-string p2, "Unable to instantiate mediation adapter class."

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzemz;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcen;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzepf;

    .line 6
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzekj;Lcom/google/android/gms/internal/ads/zzcen;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    .line 7
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzdcp;->zza(Lcom/google/android/gms/internal/ads/zzdco;)V

    .line 8
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzM:Z

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 10
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .line 11
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v2, "render_test_ad_label"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzc:Lcom/google/android/gms/internal/ads/zzfnu;

    .line 14
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfno;->zzq:Lcom/google/android/gms/internal/ads/zzfno;

    .line 15
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeph;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeph;-><init>(Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 16
    invoke-static {v4, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzfnf;->zzd(Lcom/google/android/gms/internal/ads/zzfna;Lcom/google/android/gms/internal/ads/zzgzy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnm;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfno;->zzr:Lcom/google/android/gms/internal/ads/zzfno;

    .line 17
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfnl;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfno;->zzs:Lcom/google/android/gms/internal/ads/zzfno;

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzepg;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzepg;-><init>(Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzb:Lcom/google/android/gms/internal/ads/zzekm;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekm;->zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzb:Lcom/google/android/gms/internal/ads/zzekm;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekm;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
