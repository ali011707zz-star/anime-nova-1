.class public final Lcom/google/android/gms/internal/ads/zzhcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhla;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhcl;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhcl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcl;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcj;->zza:Lcom/google/android/gms/internal/ads/zzhcj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhjo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhas;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcl;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhcl;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzc(Lcom/google/android/gms/internal/ads/zzhla;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhcl;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhkv;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcl;->zza:Lcom/google/android/gms/internal/ads/zzhcl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkv;->zzb(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhkv;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhas;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhas;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhkz;)Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkp;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhjj;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhbk;->zze(I)Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzb()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zza()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzhcg;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhcg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhcg;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_0
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzhjo;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhjo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhjo;->zzd()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v3

    .line 6
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhci;

    .line 5
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzhci;-><init>(Lcom/google/android/gms/internal/ads/zzhas;I)V

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkp;

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhaz;->zza()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot get output prefix for key of class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkb;->zza()Lcom/google/android/gms/internal/ads/zzhkb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()Lcom/google/android/gms/internal/ads/zzhjt;

    move-result-object v1

    const-string v2, "encrypt"

    .line 14
    const-string v3, "aead"

    invoke-interface {v1, p1, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzhjt;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object v2

    const-string v4, "decrypt"

    .line 15
    invoke-interface {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhjt;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object p2

    move-object v7, p2

    move-object v6, v2

    goto :goto_3

    .line 11
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhjv;->zza:Lcom/google/android/gms/internal/ads/zzhjs;

    move-object v6, v2

    move-object v7, v6

    .line 15
    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhck;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhci;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbk;->zzc()Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object p2

    .line 17
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhas;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbk;->zzc()Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result p1

    .line 17
    invoke-direct {v4, p2, p1}, Lcom/google/android/gms/internal/ads/zzhci;-><init>(Lcom/google/android/gms/internal/ads/zzhas;I)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkp;->zzb()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhck;-><init>(Lcom/google/android/gms/internal/ads/zzhci;Lcom/google/android/gms/internal/ads/zzhkr;Lcom/google/android/gms/internal/ads/zzhjs;Lcom/google/android/gms/internal/ads/zzhjs;[B)V

    return-object v3
.end method
