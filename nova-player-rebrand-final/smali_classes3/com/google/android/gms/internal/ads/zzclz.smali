.class public final Lcom/google/android/gms/internal/ads/zzclz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazc;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgbb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzdx:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 3
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbx;->zze()Lcom/google/android/gms/internal/ads/zzgbw;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzdE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgbw;->zza(F)Lcom/google/android/gms/internal/ads/zzgbw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbx;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbz;->zzi()Lcom/google/android/gms/internal/ads/zzgby;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgby;->zza(Z)Lcom/google/android/gms/internal/ads/zzgby;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzdH:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgby;->zzb(J)Lcom/google/android/gms/internal/ads/zzgby;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbf;->zzu()Lcom/google/android/gms/internal/ads/zzgbe;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgbe;->zzi(I)Lcom/google/android/gms/internal/ads/zzgbe;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzgbe;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgbe;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzgbe;->zza(Z)Lcom/google/android/gms/internal/ads/zzgbe;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdu:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 20
    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgbe;->zzh(Z)Lcom/google/android/gms/internal/ads/zzgbe;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdw:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbe;->zzg(J)Lcom/google/android/gms/internal/ads/zzgbe;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbe;->zze(J)Lcom/google/android/gms/internal/ads/zzgbe;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbe;->zzd(J)Lcom/google/android/gms/internal/ads/zzgbe;

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgbe;->zzc(Lcom/google/android/gms/internal/ads/zzgbx;)Lcom/google/android/gms/internal/ads/zzgbe;

    .line 28
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzgbe;->zzf(Lcom/google/android/gms/internal/ads/zzgbz;)Lcom/google/android/gms/internal/ads/zzgbe;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgbf;

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgbb;->zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgbf;)Lcom/google/android/gms/internal/ads/zzgbb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbb;->zzh()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "uns"

    return-object v0

    :cond_0
    const-string v0, "3.0"

    return-object v0

    :cond_1
    const-string v0, "2.0"

    return-object v0

    :cond_2
    const-string v0, "1.0"

    return-object v0
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzg(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zze(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzclz;->zza:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v4

    int-to-float v10, v4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v4

    int-to-float v11, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    move/from16 v5, p3

    int-to-long v14, v5

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v14

    .line 3
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzgbb;->zzg(Landroid/view/InputEvent;)V

    .line 5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    const/16 v19, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x2

    move/from16 v17, v5

    move/from16 v18, v6

    .line 8
    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzgbb;->zzg(Landroid/view/InputEvent;)V

    .line 10
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    const/16 v16, 0x1

    move/from16 v17, v1

    move/from16 v18, v2

    .line 13
    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzg(Landroid/view/InputEvent;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgbb;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgbb;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzi([Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzf(Ljava/util/List;)V

    return-void
.end method

.method public final zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgbb;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbb;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
