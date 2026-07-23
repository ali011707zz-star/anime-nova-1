.class final Lcom/google/android/gms/internal/ads/zziar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zziaq;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zziaq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzice;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zziaq;->zzd:Ljava/lang/Object;

    return-void
.end method

.method private final zzQ(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method private final zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzH()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzz(I)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zziaq;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zziaq;->zza:I

    .line 4
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzidu;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibb;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzb(I)V

    iget p1, v0, Lcom/google/android/gms/internal/ads/zziaq;->zza:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zziaq;->zza:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzA(I)V

    return-void
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziar;->zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzT(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzidu;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibb;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    return-void

    .line 1
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    const-string p2, "Failed to parse the message."

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    .line 4
    throw p1
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzies;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzw()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzv()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzu()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzq()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    return-object p1

    :pswitch_8
    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidm;->zza()Lcom/google/android/gms/internal/ads/zzidm;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzidm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzidu;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzS(Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzl()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzk()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzj()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzg()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzh()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzf()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zze()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final zzV(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method private static final zzW(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzicg;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0
.end method

.method private static final zzX(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzicg;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zziaq;)Lcom/google/android/gms/internal/ads/zziar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzd:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zziar;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zziar;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziar;-><init>(Lcom/google/android/gms/internal/ads/zziaq;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(Ljava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicq;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzg()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzg()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzB(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzC(Ljava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicq;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzX(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzi()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzX(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzi()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    goto :goto_1

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzi()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzD(Ljava/util/List;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzj()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 6
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziar;->zzW(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    add-int v5, v1, p1

    .line 9
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result p1

    if-lt p1, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_a

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_6

    move p1, v0

    .line 6
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    return-void

    .line 16
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final zzE(Ljava/util/List;)V
    .locals 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string v0, "Protocol message tag had invalid wire type."

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_2

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_3
    return-void
.end method

.method public final zzF(Ljava/util/List;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    return-void

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public final zzG(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzS(Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 3
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string p2, "Protocol message tag had invalid wire type."

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1
.end method

.method public final zzH(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidu;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzT(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    .line 3
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzidu;->zzk(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string p2, "Protocol message tag had invalid wire type."

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final zzI(Ljava/util/List;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzq()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    return-void

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string v0, "Protocol message tag had invalid wire type."

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1
.end method

.method public final zzJ(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzK(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzL(Ljava/util/List;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 6
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziar;->zzW(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    add-int v5, v1, p1

    .line 9
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result p1

    if-lt p1, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_a

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_6

    move p1, v0

    .line 6
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    return-void

    .line 16
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final zzM(Ljava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicq;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzX(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzr()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzX(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzr()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    goto :goto_1

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzr()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzN(Ljava/util/List;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibs;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibs;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzi(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzO(Ljava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicq;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzt()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final zzP(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzicu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 9

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zziaq;->zzz(I)I

    move-result v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzicu;->zzd:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzicu;->zzb:Ljava/lang/Object;

    move-object v5, v3

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzb()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_5

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v7, 0x1

    .line 14
    const-string v8, "Unable to parse map entry."

    if-eq v6, v7, :cond_3

    if-eq v6, v0, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzd()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzicg;

    .line 10
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_1

    .line 9
    :cond_2
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzicu;->zzc:Lcom/google/android/gms/internal/ads/zzies;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 7
    invoke-direct {p0, v6, v7, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzU(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzicu;->zza:Lcom/google/android/gms/internal/ads/zzies;

    const/4 v7, 0x0

    .line 8
    invoke-direct {p0, v6, v7, v7}, Lcom/google/android/gms/internal/ads/zziar;->zzU(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzicf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziar;->zzd()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicg;

    .line 12
    invoke-direct {p1, v8, v6}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw p1

    .line 13
    :cond_5
    :goto_2
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zziaq;->zzA(I)V

    return-void

    .line 8
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zziaq;->zzA(I)V

    .line 15
    throw p1
.end method

.method public final zzb()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    return v0
.end method

.method public final zzd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziar;->zzc:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zziaq;->zzc(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()D
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzd()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()F
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zze()F

    move-result v0

    return v0
.end method

.method public final zzg()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzj()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzl()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzk()Z

    move-result v0

    return v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    return-void
.end method

.method public final zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziar;->zzT(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;Lcom/google/android/gms/internal/ads/zzibb;)V

    return-void
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzn()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v0

    return v0
.end method

.method public final zzs()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzp()I

    move-result v0

    return v0
.end method

.method public final zzt()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzq()I

    move-result v0

    return v0
.end method

.method public final zzu()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzs()I

    move-result v0

    return v0
.end method

.method public final zzw()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziar;->zzQ(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx(Ljava/util/List;)V
    .locals 5

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzX(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzd()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string v0, "Protocol message tag had invalid wire type."

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzd()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_2

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzy(Ljava/util/List;)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zze()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    return-void

    .line 16
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    const-string v0, "Protocol message tag had invalid wire type."

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziar;->zzW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zze()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_3

    :cond_4
    return-void
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicq;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzf()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1

    .line 1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzicq;->zzd(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzo()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzf()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzC()I

    move-result v1

    if-lt v1, v2, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zziar;->zzV(I)V

    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicf;

    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzicf;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1

    .line 6
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziar;->zza:Lcom/google/android/gms/internal/ads/zziaq;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzf()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzB()Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzb:I

    if-eq v0, v1, :cond_7

    move p1, v0

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziar;->zzd:I

    :cond_8
    :goto_1
    return-void
.end method
