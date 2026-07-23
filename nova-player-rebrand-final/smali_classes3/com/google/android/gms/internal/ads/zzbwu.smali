.class public final Lcom/google/android/gms/internal/ads/zzbwu;
.super Lcom/google/android/gms/internal/ads/zzbwx;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbwx;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzb:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwx;->zzg(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgl;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgl;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Feature is not supported by the device."

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwx;->zzg(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zza:Ljava/util/Map;

    const-string v2, "iurl"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Image url cannot be empty."

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwx;->zzg(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    .line 15
    :cond_3
    const-string v3, "([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzf()Landroid/content/res/Resources;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v3, :cond_4

    .line 18
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 26
    :cond_4
    const-string v4, "Save image"

    .line 18
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_5

    .line 19
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 26
    :cond_5
    const-string v4, "Allow Ad to store image in Picture gallery?"

    .line 20
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_6

    .line 21
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->s3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 26
    :cond_6
    const-string v4, "Accept"

    .line 21
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbws;

    invoke-direct {v5, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbws;-><init>(Lcom/google/android/gms/internal/ads/zzbwu;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_7

    .line 23
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->s4:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 26
    :cond_7
    const-string v1, "Decline"

    .line 23
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbwt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbwt;-><init>(Lcom/google/android/gms/internal/ads/zzbwu;)V

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 15
    :cond_8
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image type not recognized: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwx;->zzg(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid image url: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwx;->zzg(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzb()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwu;->zzb:Landroid/content/Context;

    return-object v0
.end method
