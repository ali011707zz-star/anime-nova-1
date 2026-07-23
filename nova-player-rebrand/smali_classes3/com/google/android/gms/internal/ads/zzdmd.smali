.class public final Lcom/google/android/gms/internal/ads/zzdmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzdbz;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzekb;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzejz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzf:Lcom/google/android/gms/internal/ads/zzejz;

    return-void
.end method

.method private final zzl()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzf:Lcom/google/android/gms/internal/ads/zzejz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzdS()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdT(I)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    return-void
.end method

.method public final zzdo()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdp()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdq()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdr()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmd;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzf:Lcom/google/android/gms/internal/ads/zzejz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzgp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzdv()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdw()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdx()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdy()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdz()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzT:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zzb:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzejw;->zza(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdmd;->zzl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zzf:Lcom/google/android/gms/internal/ads/zzejz;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejz;->zzc()V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v5, v6

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzV:Lcom/google/android/gms/internal/ads/zzfjn;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfjn;->zza()Ljava/lang/String;

    move-result-object v14

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzejx;->zzc:Lcom/google/android/gms/internal/ads/zzejx;

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzejy;->zzb:Lcom/google/android/gms/internal/ads/zzejy;

    :goto_0
    move-object/from16 v16, v3

    move-object v15, v4

    goto :goto_3

    .line 19
    :cond_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzY:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzejy;->zzd:Lcom/google/android/gms/internal/ads/zzejy;

    :goto_1
    move-object v4, v3

    goto :goto_2

    .line 10
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzejy;->zza:Lcom/google/android/gms/internal/ads/zzejy;

    goto :goto_1

    .line 11
    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzejx;->zza:Lcom/google/android/gms/internal/ads/zzejx;

    goto :goto_0

    .line 8
    :goto_3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzal:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v17, v1

    .line 13
    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzejw;->zzc(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzejy;Lcom/google/android/gms/internal/ads/zzejx;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzekb;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v1

    .line 14
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzgl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzF()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzejw;->zzg(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    goto :goto_4

    .line 22
    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v3

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    .line 18
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    .line 20
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzak(Lcom/google/android/gms/internal/ads/zzekb;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzejw;->zze(Lcom/google/android/gms/internal/ads/zzfsj;)V

    .line 22
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v3, "onSdkLoaded"

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmd;->zzl()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzf:Lcom/google/android/gms/internal/ads/zzejz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzd()V

    :cond_2
    return-void
.end method
