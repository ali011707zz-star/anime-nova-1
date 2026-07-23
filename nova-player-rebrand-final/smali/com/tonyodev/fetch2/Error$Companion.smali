.class public final Lcom/tonyodev/fetch2/Error$Companion;
.super Ljava/lang/Object;
.source "Error.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/Error$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2/Error;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 175
    :pswitch_0
    sget-object p1, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 174
    :pswitch_1
    sget-object p1, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 173
    :pswitch_2
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 172
    :pswitch_3
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 171
    :pswitch_4
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 170
    :pswitch_5
    sget-object p1, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 169
    :pswitch_6
    sget-object p1, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 168
    :pswitch_7
    sget-object p1, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 167
    :pswitch_8
    sget-object p1, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 166
    :pswitch_9
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 165
    :pswitch_a
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 164
    :pswitch_b
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 163
    :pswitch_c
    sget-object p1, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 162
    :pswitch_d
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 161
    :pswitch_e
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 160
    :pswitch_f
    sget-object p1, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 159
    :pswitch_10
    sget-object p1, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 158
    :pswitch_11
    sget-object p1, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 157
    :pswitch_12
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 156
    :pswitch_13
    sget-object p1, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 155
    :pswitch_14
    sget-object p1, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 154
    :pswitch_15
    sget-object p1, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 153
    :pswitch_16
    sget-object p1, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 152
    :pswitch_17
    sget-object p1, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 151
    :pswitch_18
    sget-object p1, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 150
    :pswitch_19
    sget-object p1, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 149
    :pswitch_1a
    sget-object p1, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 148
    :pswitch_1b
    sget-object p1, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 147
    :pswitch_1c
    sget-object p1, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 146
    :pswitch_1d
    sget-object p1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    return-object p1

    .line 145
    :pswitch_1e
    sget-object p1, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
